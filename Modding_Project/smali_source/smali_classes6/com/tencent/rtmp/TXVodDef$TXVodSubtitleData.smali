.class public Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/TXVodDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TXVodSubtitleData"
.end annotation


# instance fields
.field public durationMs:J

.field public startPositionMs:J

.field public subtitleData:Ljava/lang/String;

.field public trackIndex:J


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
