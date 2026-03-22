.class final Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecoderProfileLevel"
.end annotation


# instance fields
.field public level:I

.field public profile:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;->profile:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;->level:I

    .line 9
    .line 10
    return-void
.end method
