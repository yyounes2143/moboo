.class public final synthetic Lcom/applovin/applovin_max/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/applovin_max/AppLovinMAX;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/applovin_max/AppLovinMAX;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/applovin_max/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/applovin_max/AppLovinMAX;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/applovin_max/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/applovin_max/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/applovin_max/AppLovinMAX;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/applovin_max/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/applovin/applovin_max/AppLovinMAX;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/applovin_max/AppLovinMAX;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
