.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveStreamInfo"
.end annotation


# instance fields
.field public bitrate:I

.field public framerate:F

.field public height:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(IIIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->height:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->bitrate:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->framerate:F

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveStreamInfo;->url:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
