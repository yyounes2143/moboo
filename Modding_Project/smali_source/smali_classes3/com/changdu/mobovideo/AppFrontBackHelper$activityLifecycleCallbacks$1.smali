.class public final Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/AppFrontBackHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\nR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "com/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onActivityCreated",
        "(Landroid/app/Activity;Landroid/os/Bundle;)V",
        "onActivityStarted",
        "(Landroid/app/Activity;)V",
        "onActivityResumed",
        "onActivityPaused",
        "onActivityStopped",
        "outState",
        "onActivitySaveInstanceState",
        "onActivityDestroyed",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "activityStartCount",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/AppFrontBackHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

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

    .line 1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/AppFrontBackHelper;)Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/AppFrontBackHelper;)Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/AppFrontBackHelper;)Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/AppFrontBackHelper;)Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
