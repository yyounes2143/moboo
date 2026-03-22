.class public Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPStrategyUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPStrategyUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enablePlayBySystemPlayer(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPStrategyUtils;->isSupportMediaCodec(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static enablePlayByThumbPlayer(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->n()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPStrategyUtils;->isSupportFFmpegCodec(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPStrategyUtils;->isSupportMediaCodec(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_3
    :goto_0
    return v0
.end method

.method public static isSupportFFmpegCodec(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v4, v0

    .line 16
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v5, v0

    .line 21
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->e()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->h()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/16 v2, 0x65

    .line 30
    .line 31
    invoke-static/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isVCodecCapabilitySupport(IIIIII)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    const-string v0, "TPStrategyUtils"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public static isSupportMediaCodec(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)Z
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v4, v0

    .line 16
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v5, v0

    .line 21
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->e()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->h()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/16 v2, 0x66

    .line 30
    .line 31
    invoke-static/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isVCodecCapabilitySupport(IIIIII)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    const-string v0, "TPStrategyUtils"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public static isSystemPlayerEnable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static isTVPlatform()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static isThumbPlayerEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->isLibLoadedAndTryToLoad()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
