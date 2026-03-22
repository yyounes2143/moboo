.class public Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;
.super Landroid/app/Service;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p1, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService$Android12BridgeServiceBinder;-><init>(Lcom/tencent/vod/flutter/ui/TXAndroid12BridgeService;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
