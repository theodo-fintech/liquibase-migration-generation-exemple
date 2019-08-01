package com.sipios.busybooker

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class BusyBookerApplication

fun main(args: Array<String>) {
	runApplication<BusyBookerApplication>(*args)
}
