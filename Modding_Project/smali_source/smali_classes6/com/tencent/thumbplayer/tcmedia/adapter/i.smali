.class public Lcom/tencent/thumbplayer/tcmedia/adapter/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 5
    .line 6
    return-void
.end method

.method private static a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_1
    :goto_0
    return v0
.end method

.method private static d(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static e(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static f(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private static g(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x6

    .line 39
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method private static h(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_1
    :goto_0
    return v0
.end method

.method private static i(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static j(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method private static k(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_1
    :goto_0
    return v0
.end method

.method private static l(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_1
    :goto_0
    return v0
.end method

.method private static m(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_1
    :goto_0
    return v0
.end method

.method private static n(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_1
    :goto_0
    return v0
.end method

.method private static o(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method private static p(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_1
    :goto_0
    return v0
.end method

.method private static q(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private static r(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method private static s(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static t(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x5

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method private static u(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method private static v(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static w(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x7

    .line 30
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method private static x(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private static y(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->is(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->c(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->d(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->e(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->f(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->g(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->h(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->i(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_8
    const/16 v0, 0xb

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->j(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->k(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_a
    const/16 v0, 0xd

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->m(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_b
    const/16 v0, 0xe

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->n(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_c
    const/16 v0, 0xf

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->o(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_d
    const/16 v0, 0x10

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->p(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_e
    const/16 v0, 0x11

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->x(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_f
    const/16 v0, 0x12

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->y(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_10
    const/16 v0, 0x13

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->l(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->q(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->r(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->s(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->t(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->u(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->v(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->w(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)Z

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
