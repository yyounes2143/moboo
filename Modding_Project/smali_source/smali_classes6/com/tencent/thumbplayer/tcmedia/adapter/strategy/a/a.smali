.class public Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:Z


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->d:Z

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a:I

    .line 9
    .line 10
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b:I

    .line 11
    .line 12
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPStrategyUtils;->isTVPlatform()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b:I

    .line 20
    .line 21
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a:I

    .line 22
    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/16 v1, 0xd2

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v3, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamQueueInt()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamQueueInt;->queueValue:[I

    .line 45
    .line 46
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->c:[I

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->d:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/16 v1, 0xca

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamType()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v2, v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-wide v2, v2, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 71
    .line 72
    invoke-direct {p0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a(J)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 83
    .line 84
    long-to-int v1, v1

    .line 85
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b:I

    .line 86
    .line 87
    :cond_3
    const/16 v1, 0xcb

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamType()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ne v1, v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 106
    .line 107
    invoke-direct {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b(J)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-wide v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 118
    .line 119
    long-to-int p1, v0

    .line 120
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a:I

    .line 121
    .line 122
    :cond_4
    iget p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b:I

    .line 123
    .line 124
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a:I

    .line 125
    .line 126
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a(II)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private a(II)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not soft with systemplayer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x5

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(J)Z
    .locals 2

    .line 2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x5

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->a:I

    return v0
.end method

.method public c()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->c:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->d:Z

    .line 2
    .line 3
    return v0
.end method
