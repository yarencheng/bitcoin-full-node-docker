package main

import "github.com/gin-gonic/gin"

import "github.com/yarencheng/bitcoin-full-node-docker/go/logger"

func main() {
	r := gin.Default()

	logger.InfoLn("")

	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080
}
