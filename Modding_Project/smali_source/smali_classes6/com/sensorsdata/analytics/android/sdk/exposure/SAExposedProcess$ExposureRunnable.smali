.class Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExposureRunnable"
.end annotation


# instance fields
.field private final mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mView:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViewList(Landroid/view/View;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 53
    .line 54
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    const-string v4, "SA.SAExposedProcess"

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "ExposureRunnable->exposureView:"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getStayDuration()D

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    mul-double/2addr v4, v6

    .line 115
    double-to-long v4, v4

    .line 116
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    .line 117
    .line 118
    invoke-direct {v6, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1, v2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .line 138
    .line 139
    :cond_2
    monitor-exit v3

    .line 140
    goto :goto_0

    .line 141
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void
.end method
