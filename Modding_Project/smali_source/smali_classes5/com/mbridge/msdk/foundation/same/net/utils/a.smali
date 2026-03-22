.class public Lcom/mbridge/msdk/foundation/same/net/utils/a;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static a(Lcom/mbridge/msdk/foundation/same/net/exception/a;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->c:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;->d:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    const/4 v2, -0x2

    .line 16
    if-eq v0, v2, :cond_9

    .line 17
    .line 18
    const/16 v2, 0xf

    .line 19
    .line 20
    if-eq v0, v2, :cond_8

    .line 21
    .line 22
    const v2, 0xd6d97

    .line 23
    .line 24
    .line 25
    if-eq v0, v2, :cond_7

    .line 26
    .line 27
    const v2, 0xd6da9

    .line 28
    .line 29
    .line 30
    if-eq v0, v2, :cond_6

    .line 31
    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    packed-switch v0, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    const-string p0, "Network error,unknown"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_0
    if-eqz p0, :cond_3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;->a:[B

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    const-string p0, "Socket exception message is NULL"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_3
    const-string p0, "Unknown socket exception"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_1
    const-string p0, "Network error,ConnectException"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_2
    const-string p0, "Network error\uff0csslp exception"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_3
    const-string p0, "Network error,socket timeout exception"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_4
    const-string p0, "Cast exception, return data can not be casted correctly"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_5
    if-eqz v1, :cond_4

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v0, "The server returns an exception state code "

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    const-string p0, "The server returns an exception "

    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_6
    if-eqz v1, :cond_5

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v0, "Network error,please check state code "

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_5
    const-string p0, "Network error,please check "

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_7
    const-string p0, "Network error\uff0chttps is not work,please check your phone time"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_8
    const-string p0, "Network unknown error"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_9
    const-string p0, "Network error,timeout exception"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_a
    const-string p0, "Network error,I/O exception"

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_6
    const-string p0, "Network error,UnknownHostException"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_7
    const-string p0, "timeout"

    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_8
    const-string p0, "Network error,I/O exception contents null"

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_9
    const-string p0, "Network is canceled"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    return-object p0

    .line 141
    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_1
    :pswitch_b
    const-string p0, "Network error,Load failed"

    .line 146
    .line 147
    return-object p0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
