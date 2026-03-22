.class public final Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "com/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1",
        "Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "onBack"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onAttachedToEngine$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "onResume"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
