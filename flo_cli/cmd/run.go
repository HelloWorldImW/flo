/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-09-11 16:24:51
 * @Description:运行
 * @FilePath: /flo/flo_cli/cmd/run.go
 * JoeSay: What does not kill me, makes me stronger
 */
package cmd

import (
	"github.com/spf13/cobra"
)

var (
	runCmd = &cobra.Command{
		Use:   "run",
		Short: "运行flo",
		Run: func(cmd *cobra.Command, args []string) {
			// Do Stuff Here
		},
	}
)
