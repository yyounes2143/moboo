.class public Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile isMonitor:Z

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

.field private final mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

.field private views:[Landroid/view/View;

.field private volatile windowCount:I


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SA.ExposedTransform"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 15
    .line 16
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform$LayoutCallBack;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method private processViews()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->views:[Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 21
    .line 22
    return-void
.end method

.method private viewRemoveTreeObserver(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private viewTreeObserver(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mAppPageChange:Lcom/sensorsdata/analytics/android/sdk/exposure/AppPageChange;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private viewsAddTreeObserver(Landroid/app/Activity;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "viewsAddTreeObserver:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SA.ExposedTransform"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 26
    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->getExposureViewSize(Landroid/app/Activity;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-gtz v0, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->processViews()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->views:[Landroid/view/View;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    array-length v3, v1

    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    array-length p1, v1

    .line 58
    const/4 v3, 0x0

    .line 59
    move v5, v2

    .line 60
    move v4, v3

    .line 61
    :goto_0
    if-ge v4, p1, :cond_2

    .line 62
    .line 63
    aget-object v6, v1, v4

    .line 64
    .line 65
    if-ne v0, v6, :cond_1

    .line 66
    .line 67
    move v5, v3

    .line 68
    :cond_1
    invoke-direct {p0, v6}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v5, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewTreeObserver(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 92
    .line 93
    :cond_5
    :goto_2
    return-void
.end method

.method private viewsRemoveTreeObserver(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "viewsRemoveTreeObserver:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SA.ExposedTransform"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 31
    .line 32
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->views:[Landroid/view/View;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    if-lez v2, :cond_0

    .line 38
    .line 39
    array-length p1, v1

    .line 40
    :goto_0
    if-ge v0, p1, :cond_1

    .line 41
    .line 42
    aget-object v2, v1, v0

    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewRemoveTreeObserver(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewRemoveTreeObserver(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized observerWindow(Landroid/app/Activity;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->processViews()V

    .line 5
    .line 6
    .line 7
    const-string v1, "SA.ExposedTransform"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "originWindowCount:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",windowCount:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->windowCount:I

    .line 40
    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsRemoveTreeObserver(Landroid/app/Activity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->isMonitor:Z

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_1
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "SA.ExposedTransform"

    .line 2
    .line 3
    const-string v1, "onActivityPaused"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsRemoveTreeObserver(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->onActivityPaused(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    const-string v0, "SA.ExposedTransform"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onActivityResumed:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->viewsAddTreeObserver(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedTransform;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;->onActivityResumed(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method
