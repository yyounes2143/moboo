.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final mMapStreamTypeToContentType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapStreamTypeToUsage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mMapStreamTypeToContentType:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x5

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const/16 v8, 0x8

    .line 65
    .line 66
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mMapStreamTypeToUsage:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xd

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x6

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 8
    .line 9
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mFlags:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addFlags(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    .locals 1

    .line 1
    and-int/lit16 p1, p1, 0x111

    .line 2
    .line 3
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mFlags:I

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mFlags:I

    .line 7
    .line 8
    return-object p0
.end method

.method public build()Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$1;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->access$102(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->access$202(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mFlags:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->access$302(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public setContentType(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeContentType;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->access$500()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 20
    .line 21
    return-object p0
.end method

.method public setFlags(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0x111

    .line 2
    .line 3
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mFlags:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setLegacyStreamType(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeStreamType;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mMapStreamTypeToContentType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mContentType:I

    .line 32
    .line 33
    :goto_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mMapStreamTypeToUsage:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 63
    .line 64
    return-object p0
.end method

.method public setUsage(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeUsage;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->access$400()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;->mUsage:I

    .line 20
    .line 21
    return-object p0
.end method
