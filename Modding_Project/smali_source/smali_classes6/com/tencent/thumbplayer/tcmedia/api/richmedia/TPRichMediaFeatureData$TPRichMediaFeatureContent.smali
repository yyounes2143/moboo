.class public Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPRichMediaFeatureContent"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field private mEndTimeMs:J

.field private mStartTimeMs:J


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData$TPNativeRichMediaFeatureContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mStartTimeMs:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mEndTimeMs:J

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mContent:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData$TPNativeRichMediaFeatureContent;->getStartTimeMs()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mStartTimeMs:J

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData$TPNativeRichMediaFeatureContent;->getEndTimeMs()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mEndTimeMs:J

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData$TPNativeRichMediaFeatureContent;->getContent()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mContent:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mEndTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData$TPRichMediaFeatureContent;->mStartTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method
