.class public final Lcom/changdu/mobovideo/VideoApplication;
.super Landroid/app/Application;
.source "Proguard"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/VideoApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/changdu/mobovideo/VideoApplication;",
        "Landroid/app/Application;",
        "Landroidx/work/Configuration$Provider;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "base",
        "",
        "attachBaseContext",
        "(Landroid/content/Context;)V",
        "onCreate",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "mIsMainProcess",
        "Landroidx/work/Configuration;",
        "getWorkManagerConfiguration",
        "()Landroidx/work/Configuration;",
        "workManagerConfiguration",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public static Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/VideoApplication;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/VideoApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/changdu/mobovideo/utils/AppUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/AppUtil;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/utils/AppUtil;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/AppUtil;->Wwwwwwwwwwwwwwwww()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/utils/AppUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/AppUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/AppUtil;->Wwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/VideoApplication;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    sput-boolean v1, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 23
    .line 24
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/changdu/mobovideo/utils/CommonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/CommonUtil;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/utils/CommonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    :try_start_1
    iget-boolean v0, p0, Lcom/changdu/mobovideo/VideoApplication;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    sget-object v0, Lcom/changdu/mobovideo/localpush/UnlockReceiver;->Companion:Lcom/changdu/mobovideo/localpush/UnlockReceiver$Companion;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/localpush/UnlockReceiver$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/changdu/mobovideo/picture/CDJobScheduler;->INSTANCE:Lcom/changdu/mobovideo/picture/CDJobScheduler;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/changdu/mobovideo/picture/CDJobScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    .line 59
    :catchall_1
    :cond_0
    const/4 v0, 0x3

    .line 60
    const/4 v1, 0x5

    .line 61
    const/4 v2, 0x6

    .line 62
    const/4 v3, 0x7

    .line 63
    const/16 v4, 0xb

    .line 64
    .line 65
    :try_start_2
    filled-new-array {v1, v2, v3, v4, v0}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lcom/changdu/mobovideo/utils/SignalHandler;

    .line 70
    .line 71
    invoke-direct {v1}, Lcom/changdu/mobovideo/utils/SignalHandler;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p0, v1}, Lcom/changdu/component/nativeguard/CDNativeGuard;->init([ILandroid/app/Application;Lcom/changdu/component/nativeguard/OnNativeGuardListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    .line 76
    .line 77
    :catchall_2
    :try_start_3
    sget-object v0, Lcom/changdu/component/push/base/PushManager;->INSTANCE:Lcom/changdu/component/push/base/PushManager;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/changdu/component/push/base/PushManager;->init(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/changdu/mobovideo/VideoApplication$onCreate$4;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/changdu/mobovideo/VideoApplication$onCreate$4;-><init>(Lcom/changdu/mobovideo/VideoApplication;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/changdu/component/push/base/PushManager;->setMessageCallBack(Lcom/changdu/component/push/base/BaseMessageCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 92
    .line 93
    .line 94
    :catchall_3
    return-void
.end method
