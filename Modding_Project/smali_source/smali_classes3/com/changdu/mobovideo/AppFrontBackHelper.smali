.class public final Lcom/changdu/mobovideo/AppFrontBackHelper;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/changdu/mobovideo/AppFrontBackHelper;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Application;",
        "application",
        "Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;",
        "listener",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/app/Application;Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;",
        "mOnAppStatusListener",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "activityLifecycleCallbacks",
        "OnAppStatusListener",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application$ActivityLifecycleCallbacks;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/changdu/mobovideo/AppFrontBackHelper$activityLifecycleCallbacks$1;-><init>(Lcom/changdu/mobovideo/AppFrontBackHelper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/AppFrontBackHelper;)Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/changdu/mobovideo/AppFrontBackHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
