.class public Lcom/tencent/vod/flutter/live/render/FTXSize;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 4
    iput p2, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    return-void
.end method


# virtual methods
.method public swap()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 4
    .line 5
    iput v1, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->width:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/vod/flutter/live/render/FTXSize;->height:I

    .line 8
    .line 9
    return-void
.end method
