.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private canvasHeight:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private canvasWidth:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endMargin:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private familyName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontColor:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontScale:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontSize:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isBondFontStyle:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lineSpace:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outlineColor:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outlineWidth:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startMargin:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private verticalMargin:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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


# virtual methods
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->canvasWidth:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setCanvasWidth(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->canvasHeight:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setCanvasHeight(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->familyName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setFamilyName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontSize:Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setFontSize(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontScale:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setFontScale(Ljava/lang/Double;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontColor:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setFontColor(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->isBondFontStyle:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setIsBondFontStyle(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->outlineWidth:Ljava/lang/Double;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setOutlineWidth(Ljava/lang/Double;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->outlineColor:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setOutlineColor(Ljava/lang/Long;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->lineSpace:Ljava/lang/Double;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setLineSpace(Ljava/lang/Double;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->startMargin:Ljava/lang/Double;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setStartMargin(Ljava/lang/Double;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->endMargin:Ljava/lang/Double;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setEndMargin(Ljava/lang/Double;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->verticalMargin:Ljava/lang/Double;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setVerticalMargin(Ljava/lang/Double;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public setCanvasHeight(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->canvasHeight:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCanvasWidth(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->canvasWidth:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEndMargin(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->endMargin:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->familyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontColor(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontColor:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontScale(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontScale:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFontSize(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->fontSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsBondFontStyle(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->isBondFontStyle:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLineSpace(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->lineSpace:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOutlineColor(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->outlineColor:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOutlineWidth(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->outlineWidth:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayerId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartMargin(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->startMargin:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVerticalMargin(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg$Builder;->verticalMargin:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method
