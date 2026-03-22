.class Lcom/applovin/impl/sdk/array/ArrayService$1;
.super Lcom/applovin/impl/b;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/array/ArrayService;-><init>(Lcom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/impl/sdk/array/ArrayService;

.field final synthetic val$sdk:Lcom/applovin/impl/sdk/k;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/array/ArrayService;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->val$sdk:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/applovin/impl/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const-string p1, "ArrayService"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService;->access$000(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$100(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/array/apphub/aidl/IAppHubService;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$200(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/o;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$200(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/o;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "Dismissing Direct Download Activity"

    .line 38
    .line 39
    invoke-virtual {v1, p1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$100(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/array/apphub/aidl/IAppHubService;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$300(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Lcom/applovin/array/apphub/aidl/IAppHubService;->dismissDirectDownloadAppDetails(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "APP_DETAILS_DISMISSED"

    .line 63
    .line 64
    iget-object v3, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$300(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Lcom/applovin/impl/sdk/array/ArrayService;->access$400(Lcom/applovin/impl/sdk/array/ArrayService;Ljava/lang/String;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v1, v2, v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$002(Lcom/applovin/impl/sdk/array/ArrayService;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$200(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/o;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$200(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/o;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "Failed dismiss Direct Download Activity"

    .line 102
    .line 103
    invoke-virtual {v1, p1, v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->this$0:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/applovin/impl/sdk/array/ArrayService;->access$600(Lcom/applovin/impl/sdk/array/ArrayService;)Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/applovin/impl/sdk/array/ArrayService$1;->val$sdk:Lcom/applovin/impl/sdk/k;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "dismissDirectDownloadActivity"

    .line 119
    .line 120
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_2
    return-void
.end method
