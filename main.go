package main

import (
    "github.com/gin-gonic/gin"
    "test-go-app/controllers"
)

func main() {
    r := gin.Default()

    r.GET("/user", controllers.GetUser)

    r.Run(":8080")
}
