.class public final Lcom/changdu/component/core/CDComponentConfigs;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Long;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public final q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public final t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->d:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "4"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->e:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->f:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->g:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->h:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->i:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->j:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->k:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->l:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->m:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->n:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v2, 0x15e

    .line 38
    .line 39
    iput v2, p0, Lcom/changdu/component/core/CDComponentConfigs;->o:I

    .line 40
    .line 41
    const/16 v2, 0x2e

    .line 42
    .line 43
    iput v2, p0, Lcom/changdu/component/core/CDComponentConfigs;->p:I

    .line 44
    .line 45
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/changdu/component/core/CDComponentConfigs;->q:Ljava/lang/String;

    .line 48
    .line 49
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->r:I

    .line 50
    .line 51
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->s:I

    .line 52
    .line 53
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/changdu/component/core/CDComponentConfigs;->t:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->u:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->v:Ljava/lang/String;

    .line 60
    .line 61
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->w:I

    .line 62
    .line 63
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->x:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 66
    .line 67
    const-wide/16 v1, -0x1

    .line 68
    .line 69
    iput-wide v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 70
    .line 71
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->A:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->B:Ljava/lang/Long;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/changdu/component/core/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/changdu/component/core/a;-><init>(Lcom/changdu/component/core/CDComponentConfigs;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "CDComponent-GoogleAdId"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "window"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/view/WindowManager;

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    .line 35
    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    .line 38
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->r:I

    .line 39
    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    .line 42
    iput v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    .line 55
    iput v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->r:I

    .line 56
    .line 57
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    .line 59
    iput v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->s:I

    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->u:Ljava/lang/String;

    .line 78
    .line 79
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/changdu/component/core/CDComponentConfigs;->v:Ljava/lang/String;

    .line 91
    .line 92
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 93
    .line 94
    iput v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->w:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    :catch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "android_id"

    .line 101
    .line 102
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->x:Ljava/lang/String;

    .line 107
    .line 108
    return-void
.end method

.method public getGoogleAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGoogleAdIdTimeConsuming()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSendId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/core/CDComponentConfigs;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppIdKey(Ljava/lang/String;Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCoreVersion(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGoogleAdId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGuid(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLangId(I)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductId(Ljava/lang/Long;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->B:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductX(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSendId(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setServerProtocolVersion(I)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSid(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserAccountName(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserHeadFrameUrl(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserHeadUrl(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserNickname(Ljava/lang/String;)Lcom/changdu/component/core/CDComponentConfigs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/CDComponentConfigs;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
