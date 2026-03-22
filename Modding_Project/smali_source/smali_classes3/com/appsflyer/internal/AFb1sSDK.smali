.class public final Lcom/appsflyer/internal/AFb1sSDK;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFb1sSDK;",
        "",
        "Lcom/appsflyer/internal/AFh1mSDK;",
        "event",
        "",
        "rawData",
        "<init>",
        "(Lcom/appsflyer/internal/AFh1mSDK;[B)V",
        "",
        "afInfoLog",
        "()V",
        "AFAdRevenueData",
        "Lcom/appsflyer/internal/AFh1mSDK;",
        "getMonetizationNetwork",
        "getRevenue",
        "[B"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1mSDK;[B)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1sSDK;->getRevenue:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afInfoLog()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 5
    .line 6
    const v4, -0x76de88c2

    .line 7
    .line 8
    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x0

    .line 18
    const v7, 0xe39f

    .line 19
    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    const-wide/16 v10, 0x0

    .line 29
    .line 30
    cmpl-double v5, v8, v10

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x58

    .line 33
    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    shr-int/lit8 v8, v8, 0x10

    .line 39
    .line 40
    sub-int v8, v7, v8

    .line 41
    .line 42
    int-to-char v8, v8

    .line 43
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/4 v10, 0x0

    .line 48
    cmpl-float v9, v9, v10

    .line 49
    .line 50
    rsub-int/lit8 v9, v9, 0x25

    .line 51
    .line 52
    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :goto_0
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v5, p0, Lcom/appsflyer/internal/AFb1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;

    .line 76
    .line 77
    iget-object v6, p0, Lcom/appsflyer/internal/AFb1sSDK;->getRevenue:[B

    .line 78
    .line 79
    :try_start_1
    new-array v8, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v6, v8, v0

    .line 82
    .line 83
    aput-object v5, v8, v2

    .line 84
    .line 85
    const v5, 0x7dfc659b

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/16 v6, 0x30

    .line 100
    .line 101
    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    rsub-int v6, v6, 0x88

    .line 106
    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    shr-int/lit8 v9, v9, 0x10

    .line 112
    .line 113
    sub-int/2addr v7, v9

    .line 114
    int-to-char v7, v7

    .line 115
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    shr-int/lit8 v9, v9, 0x10

    .line 120
    .line 121
    rsub-int/lit8 v9, v9, 0x25

    .line 122
    .line 123
    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/lang/Class;

    .line 128
    .line 129
    const-string v7, "getMonetizationNetwork"

    .line 130
    .line 131
    new-array v1, v1, [Ljava/lang/Class;

    .line 132
    .line 133
    const-class v9, Lcom/appsflyer/internal/AFh1mSDK;

    .line 134
    .line 135
    aput-object v9, v1, v2

    .line 136
    .line 137
    const-class v2, [B

    .line 138
    .line 139
    aput-object v2, v1, v0

    .line 140
    .line 141
    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :goto_1
    check-cast v6, Ljava/lang/reflect/Method;

    .line 153
    .line 154
    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_2

    .line 164
    .line 165
    throw v1

    .line 166
    :cond_2
    throw v0
.end method
