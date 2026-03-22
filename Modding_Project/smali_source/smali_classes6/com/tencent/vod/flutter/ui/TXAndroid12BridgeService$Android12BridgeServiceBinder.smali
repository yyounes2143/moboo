.class Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;
.super Landroid/os/Binder;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Android12BridgeServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;->this$0:Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;->this$0:Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;

    .line 2
    .line 3
    return-object v0
.end method
