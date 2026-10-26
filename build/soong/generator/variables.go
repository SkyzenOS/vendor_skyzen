package generator

import (
	"fmt"

	"android/soong/android"
)

func skyzenExpandVariables(ctx android.ModuleContext, in string) string {
	skyzenVars := ctx.Config().VendorConfig("skyzenVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if skyzenVars.IsSet(name) {
			return skyzenVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
