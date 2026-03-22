.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveLocalRecordingParams"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public interval:I

.field public recordMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;->V2TXLiveRecordModeBoth:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;->recordMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;->interval:I

    .line 10
    .line 11
    return-void
.end method
