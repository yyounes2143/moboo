.class Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$000(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    const-string p2, "vodPlayerId"

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$000(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/FTXPIPManager$PipParams;->getCurrentPlayerId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne p2, v1, :cond_2

    .line 36
    .line 37
    const-string p2, "vodPlayOp"

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    const-string p1, "FlutterPipImplActivity"

    .line 47
    .line 48
    const-string p2, "unknown control code"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$400(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    const-string p2, "isPlaying"

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    if-ne p1, v1, :cond_0

    .line 73
    .line 74
    move v0, v1

    .line 75
    :cond_0
    invoke-static {p2, v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$200(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$300(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$1;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$100(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
