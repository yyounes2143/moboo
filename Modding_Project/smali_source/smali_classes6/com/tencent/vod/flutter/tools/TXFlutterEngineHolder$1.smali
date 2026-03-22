.class Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->attachBindLife(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "TXFlutterEngineHolder"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "activity is destroyed:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$500(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Landroid/app/Activity;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ltz p1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "TXFlutterEngineHolder"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "activity is resumed:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$500(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Landroid/app/Activity;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ltz v1, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$400(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$108(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "activity is started:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "TXFlutterEngineHolder"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$200(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$100(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$202(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Z)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$300(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$110(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "activity is stopped:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "TXFlutterEngineHolder"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$200(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$100(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$202(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;Z)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$1;->this$0:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->access$600(Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
