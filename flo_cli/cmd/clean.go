/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-09-12 22:28:59
 * @Description:清理
 * @FilePath: /flo/flo_cli/cmd/clean.go
 * JoeSay: What does not kill me, makes me stronger
 */
package cmd

import (
	"github.com/spf13/cobra"
)

var (
	cleanCmd = &cobra.Command{
		Use:   "clean",
		Short: "清理flo",
		Run: func(cmd *cobra.Command, args []string) {
			// Do Stuff Here
		},
	}
)
