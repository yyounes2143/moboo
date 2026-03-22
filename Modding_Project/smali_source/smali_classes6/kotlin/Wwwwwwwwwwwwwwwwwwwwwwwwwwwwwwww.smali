.class public final synthetic Lkotlin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    const-wide/high16 v3, -0x8000000000000000L

    .line 6
    .line 7
    if-gez v2, :cond_1

    .line 8
    .line 9
    xor-long v0, p0, v3

    .line 10
    .line 11
    xor-long/2addr v3, p2

    .line 12
    cmp-long v0, v0, v3

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    return-wide p0

    .line 17
    :cond_0
    sub-long/2addr p0, p2

    .line 18
    return-wide p0

    .line 19
    :cond_1
    cmp-long v2, p0, v0

    .line 20
    .line 21
    if-ltz v2, :cond_2

    .line 22
    .line 23
    rem-long/2addr p0, p2

    .line 24
    return-wide p0

    .line 25
    :cond_2
    const/4 v2, 0x1

    .line 26
    ushr-long v5, p0, v2

    .line 27
    .line 28
    div-long/2addr v5, p2

    .line 29
    shl-long/2addr v5, v2

    .line 30
    mul-long/2addr v5, p2

    .line 31
    sub-long/2addr p0, v5

    .line 32
    xor-long v5, p0, v3

    .line 33
    .line 34
    xor-long/2addr v3, p2

    .line 35
    cmp-long v2, v5, v3

    .line 36
    .line 37
    if-ltz v2, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move-wide p2, v0

    .line 41
    :goto_0
    sub-long/2addr p0, p2

    .line 42
    return-wide p0
.end method
