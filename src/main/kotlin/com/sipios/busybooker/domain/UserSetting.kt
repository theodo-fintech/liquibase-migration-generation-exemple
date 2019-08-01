package com.sipios.busybooker.domain

import javax.persistence.*

@Entity
data class UserSetting (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Int,

    @Column(nullable = false)
    val email: String,

    @Column(nullable = false)
    val dailyAvailabilityLowerThreshold: Int,

    @Column(nullable = false)
    val other: String
)