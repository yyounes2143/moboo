.class public Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerHlsTag;
.super Ljava/lang/Object;


# instance fields
.field public bandwidth:J

.field public codecs:Ljava/lang/String;

.field public framerate:F

.field public groupId:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerHlsTag;->bandwidth:J

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerHlsTag;->framerate:F

    .line 11
    .line 12
    return-void
.end method
