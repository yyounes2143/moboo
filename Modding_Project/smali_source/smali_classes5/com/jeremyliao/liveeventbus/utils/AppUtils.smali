.class public final Lcom/jeremyliao/liveeventbus/utils/AppUtils;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;,
        Lcom/jeremyliao/liveeventbus/utils/AppUtils$OnActivityDestroyedListener;,
        Lcom/jeremyliao/liveeventbus/utils/AppUtils$OnAppStatusChangedListener;,
        Lcom/jeremyliao/liveeventbus/utils/AppUtils$FileProvider4UtilCode;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

.field private static final PERMISSION_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.blankj.utilcode.util.PermissionUtils$PermissionActivity"

.field private static sApplication:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static getActivityLifecycle()Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getActivityList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 4
    .line 5
    return-object v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApplicationByReflect()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->init(Landroid/app/Application;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static getApplicationByReflect()Landroid/app/Application;
    .locals 5

    .line 1
    const-string v0, "u should init first"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "currentActivityThread"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v4, "getApplication"

    .line 21
    .line 22
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v1, Landroid/app/Application;

    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception v1

    .line 40
    goto :goto_2

    .line 41
    :catch_3
    move-exception v1

    .line 42
    goto :goto_3

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_4
    new-instance v1, Ljava/lang/NullPointerException;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public static getTopActivityOrApp()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->isAppForeground()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApp()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApp()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    goto :goto_0

    .line 5
    :cond_0
    sput-object p0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    .line 6
    :goto_0
    sget-object p0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_1
    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 8
    sget-object v0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    sget-object v1, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->ACTIVITY_LIFECYCLE:Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 9
    iget-object v0, v1, Lcom/jeremyliao/liveeventbus/utils/AppUtils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 10
    sput-object p0, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->sApplication:Landroid/app/Application;

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->init(Landroid/app/Application;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static isAppForeground()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApp()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 45
    .line 46
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 47
    .line 48
    const/16 v4, 0x64

    .line 49
    .line 50
    if-ne v3, v4, :cond_2

    .line 51
    .line 52
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Lcom/jeremyliao/liveeventbus/utils/AppUtils;->getApp()Landroid/app/Application;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    return v0

    .line 67
    :cond_3
    :goto_0
    return v1
.end method
