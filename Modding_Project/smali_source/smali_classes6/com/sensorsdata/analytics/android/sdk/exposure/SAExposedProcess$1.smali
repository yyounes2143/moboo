.class Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getExposureViewSize(Landroid/app/Activity;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViewSize()I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->invisibleElement()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$300(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$700(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    xor-int/2addr v2, v3

    .line 21
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$602(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$702(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$600(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViews()Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setActivityChange(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->viewLayoutChange(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public viewLayoutChange(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$300(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 44
    .line 45
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$202(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "SA.SAExposedProcess"

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "delayTime:"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getDelayTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getDelayTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    const-string p1, "delayTime->500ms"

    .line 121
    .line 122
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-wide/16 v1, 0x1f4

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    :cond_2
    return-void
.end method
