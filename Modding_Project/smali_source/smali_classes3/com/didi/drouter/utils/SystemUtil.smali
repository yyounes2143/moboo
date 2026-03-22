.class public Lcom/didi/drouter/utils/SystemUtil;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_0
    sput-boolean p0, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    :catch_0
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/didi/drouter/utils/SystemUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method
