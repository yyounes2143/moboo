.class public Lcom/tencent/thumbplayer/tcmedia/c/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 2

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xca

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "event is invalid: "

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :pswitch_0
    const/16 p0, 0x10

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_1
    const/16 p0, 0xb

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_2
    const/16 p0, 0xa

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_3
    const/16 p0, 0x9

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_4
    const/16 p0, 0x8

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_5
    const/4 p0, 0x7

    .line 44
    return p0

    .line 45
    :pswitch_6
    const/4 p0, 0x6

    .line 46
    return p0

    .line 47
    :pswitch_7
    const/4 p0, 0x5

    .line 48
    return p0

    .line 49
    :pswitch_8
    const/4 p0, 0x4

    .line 50
    return p0

    .line 51
    :pswitch_9
    const/4 p0, 0x3

    .line 52
    return p0

    .line 53
    :pswitch_a
    const/4 p0, 0x2

    .line 54
    return p0

    .line 55
    :pswitch_b
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :pswitch_c
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_0
    return v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "event is invalid : "

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :pswitch_0
    const/16 p0, 0x15

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_1
    const/16 p0, 0x14

    .line 36
    .line 37
    return p0

    .line 38
    :pswitch_2
    const/16 p0, 0x13

    .line 39
    .line 40
    return p0

    .line 41
    :pswitch_3
    const/16 p0, 0x12

    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_4
    const/16 p0, 0x11

    .line 45
    .line 46
    return p0

    .line 47
    :pswitch_5
    const/16 p0, 0x10

    .line 48
    .line 49
    return p0

    .line 50
    :pswitch_6
    const/16 p0, 0xf

    .line 51
    .line 52
    return p0

    .line 53
    :pswitch_7
    const/16 p0, 0xe

    .line 54
    .line 55
    return p0

    .line 56
    :pswitch_8
    const/16 p0, 0xd

    .line 57
    .line 58
    return p0

    .line 59
    :cond_0
    return v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
