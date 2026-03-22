.class Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/deeplink/DeepLinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;


# direct methods
.method public constructor <init>(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$3;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$3;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin$3;->this$0:Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;

    .line 24
    .line 25
    const-string v1, "onDeepLinking"

    .line 26
    .line 27
    const-string v2, "success"

    .line 28
    .line 29
    invoke-static {v0, p1, v1, v2}, Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/appsflyersdk/AppsflyerSdkPlugin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
