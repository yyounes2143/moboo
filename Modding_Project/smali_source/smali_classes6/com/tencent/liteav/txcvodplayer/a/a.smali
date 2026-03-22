.class public final Lcom/tencent/liteav/txcvodplayer/a/a;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:I

.field private E:Landroid/content/Context;

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private K:I

.field private L:F

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

.field private R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    iput-boolean v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    .line 26
    .line 27
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    .line 28
    .line 29
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    .line 30
    .line 31
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 37
    .line 38
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 39
    .line 40
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:Z

    .line 47
    .line 48
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:I

    .line 49
    .line 50
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:I

    .line 51
    .line 52
    const-string v1, "0"

    .line 53
    .line 54
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 61
    .line 62
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    .line 63
    .line 64
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    .line 65
    .line 66
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:I

    .line 67
    .line 68
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:I

    .line 69
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:F

    .line 73
    .line 74
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    .line 75
    .line 76
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->C:I

    .line 77
    .line 78
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:I

    .line 79
    .line 80
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppVersion()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/a/a;->j()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getAppId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "getLicenseAppId = "

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "VodLicenseCheck"

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    .line 118
    .line 119
    new-instance p1, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->P:Ljava/util/Map;

    .line 125
    .line 126
    new-instance v0, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    const/4 v5, 0x1

    .line 130
    const v1, 0xc34f

    .line 131
    .line 132
    .line 133
    const/16 v2, 0x3ec

    .line 134
    .line 135
    const-string v3, ""

    .line 136
    .line 137
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 141
    .line 142
    const-string p1, "new TXCVodPlayCollection"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 16
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 19
    :try_start_0
    const-string v3, "android.view.Display"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 20
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    .line 21
    const-string v4, "getRealMetrics"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 26
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 2
    .line 3
    const-string v1, "str_sdk_name"

    .line 4
    .line 5
    const-string v2, "liteavSdk"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getBrand()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 15
    .line 16
    const-string v2, "str_brand_type"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 28
    .line 29
    const-string v2, "str_device_resolution"

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 39
    .line 40
    const-string v2, "str_device_type"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getNetworkType()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 50
    .line 51
    const-string v2, "u32_network_type"

    .line 52
    .line 53
    int-to-long v3, v0

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 62
    .line 63
    const-string v2, "dev_uuid"

    .line 64
    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 69
    .line 70
    const-string v2, "str_app_version"

    .line 71
    .line 72
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 82
    .line 83
    const-string v3, "str_app_name"

    .line 84
    .line 85
    invoke-virtual {v2, v3, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 89
    .line 90
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "sys_version"

    .line 99
    .line 100
    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 104
    .line 105
    const-string v2, "str_stream_url"

    .line 106
    .line 107
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 113
    .line 114
    const-string v2, "bytes_token"

    .line 115
    .line 116
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/tencent/liteav/LiveSettingJni;->getUserId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "_"

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 142
    .line 143
    const-string v2, "str_user_id"

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 153
    .line 154
    const-string v2, "str_package_name"

    .line 155
    .line 156
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 160
    .line 161
    const-string v1, "u32_app_id"

    .line 162
    .line 163
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 169
    .line 170
    const-string v1, "custom_data"

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->h()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->P:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->P:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    :try_start_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method private i()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x1

    .line 5
    const v1, 0x9d70

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x3f3

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->g()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 21
    .line 22
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 23
    .line 24
    int-to-long v1, v1

    .line 25
    const-string v3, "u32_timeuse"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 31
    .line 32
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    .line 33
    .line 34
    int-to-long v1, v1

    .line 35
    const-string v3, "u32_videotime"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 41
    .line 42
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 43
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    move-wide v4, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 51
    .line 52
    div-int/2addr v4, v1

    .line 53
    int-to-long v4, v4

    .line 54
    :goto_0
    const-string v1, "u32_avg_load"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 60
    .line 61
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 62
    .line 63
    int-to-long v4, v1

    .line 64
    const-string v1, "u32_load_cnt"

    .line 65
    .line 66
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 70
    .line 71
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    .line 72
    .line 73
    int-to-long v4, v1

    .line 74
    const-string v1, "u32_max_load"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 80
    .line 81
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 82
    .line 83
    int-to-long v4, v1

    .line 84
    const-string v1, "u32_avg_block_time"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 90
    .line 91
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:I

    .line 92
    .line 93
    int-to-long v4, v1

    .line 94
    const-string v1, "u32_player_type"

    .line 95
    .line 96
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 100
    .line 101
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:I

    .line 102
    .line 103
    if-lez v1, :cond_1

    .line 104
    .line 105
    int-to-long v4, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-wide v4, v2

    .line 108
    :goto_1
    const-string v1, "u32_dns_time"

    .line 109
    .line 110
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 114
    .line 115
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    .line 116
    .line 117
    if-lez v1, :cond_2

    .line 118
    .line 119
    int-to-long v4, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move-wide v4, v2

    .line 122
    :goto_2
    const-string v1, "u32_tcp_did_connect"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 128
    .line 129
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:I

    .line 130
    .line 131
    if-lez v1, :cond_3

    .line 132
    .line 133
    int-to-long v2, v1

    .line 134
    :cond_3
    const-string v1, "u32_first_video_packet"

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 140
    .line 141
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 142
    .line 143
    int-to-long v1, v1

    .line 144
    const-string v3, "u32_first_i_frame"

    .line 145
    .line 146
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 150
    .line 151
    const-string v1, "u32_server_ip"

    .line 152
    .line 153
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 159
    .line 160
    const-string v1, "u32_drm_type"

    .line 161
    .line 162
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->B:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 168
    .line 169
    const-string v1, "str_fileid"

    .line 170
    .line 171
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 177
    .line 178
    const-string v1, "u32_playmode"

    .line 179
    .line 180
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 186
    .line 187
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 188
    .line 189
    int-to-long v1, v1

    .line 190
    const-string v3, "u64_err_code"

    .line 191
    .line 192
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 196
    .line 197
    const-string v1, "str_err_info"

    .line 198
    .line 199
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 205
    .line 206
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    .line 207
    .line 208
    int-to-long v1, v1

    .line 209
    const-string v3, "u32_video_decode_type"

    .line 210
    .line 211
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 215
    .line 216
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:F

    .line 217
    .line 218
    const/high16 v2, 0x42c80000    # 100.0f

    .line 219
    .line 220
    mul-float/2addr v1, v2

    .line 221
    float-to-int v1, v1

    .line 222
    int-to-long v3, v1

    .line 223
    const-string v1, "u32_speed"

    .line 224
    .line 225
    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 229
    .line 230
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->C:I

    .line 231
    .line 232
    int-to-long v3, v1

    .line 233
    const-string v1, "vwidth"

    .line 234
    .line 235
    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 239
    .line 240
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:I

    .line 241
    .line 242
    int-to-long v3, v1

    .line 243
    const-string v1, "vheight"

    .line 244
    .line 245
    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->sendReport()V

    .line 251
    .line 252
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v1, "[reportEnd] evt 40304: token="

    .line 256
    .line 257
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, " ,dev_uuid="

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, " ,str_app_version="

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v1, " ,sys_version="

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v1, " ,str_stream_url="

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v1, " ,u32_timeuse="

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, " ,u32_videotime="

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v1, " ,u32_avg_load="

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 335
    .line 336
    if-nez v1, :cond_4

    .line 337
    .line 338
    const/4 v1, 0x0

    .line 339
    goto :goto_3

    .line 340
    :cond_4
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 341
    .line 342
    div-int v1, v3, v1

    .line 343
    .line 344
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v1, " ,u32_load_cnt="

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v1, " ,u32_max_load="

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v1, " ,u32_avg_block_time="

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v1, " ,u32_player_type="

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:I

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v1, " ,u32_dns_time="

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:I

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v1, " ,u32_tcp_did_connect="

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    .line 403
    .line 404
    const/4 v3, -0x1

    .line 405
    if-lez v1, :cond_5

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_5
    move v1, v3

    .line 409
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v1, " ,u32_first_video_packet="

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:I

    .line 418
    .line 419
    if-lez v1, :cond_6

    .line 420
    .line 421
    move v3, v1

    .line 422
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v1, " ,u32_first_i_frame="

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v1, " ,u32_server_ip="

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v1, " ,u32_drm_type="

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->B:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v1, " ,str_fileid="

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v1, " ,u32_playmode="

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v1, " ,u64_err_code="

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v1, " ,str_err_info="

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v1, " ,u32_speed="

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:F

    .line 501
    .line 502
    mul-float/2addr v1, v2

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v1, " ,u32_app_id="

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v1, " ,u32_video_decode_type="

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v1, " ,custom_data="

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->h()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v1, " ,vwidth="

    .line 539
    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->C:I

    .line 544
    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v1, " ,vheight="

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:I

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    return-void
.end method

.method private static j()Ljava/lang/String;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    const-string v6, ""

    .line 12
    .line 13
    const/4 v7, 0x5

    .line 14
    :goto_0
    const-wide/16 v8, 0xff

    .line 15
    .line 16
    const-string v10, "%02x"

    .line 17
    .line 18
    if-ltz v7, :cond_0

    .line 19
    .line 20
    new-instance v11, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    mul-int/lit8 v6, v7, 0x8

    .line 29
    .line 30
    shr-long v12, v2, v6

    .line 31
    .line 32
    and-long/2addr v8, v12

    .line 33
    long-to-int v6, v8

    .line 34
    int-to-byte v6, v6

    .line 35
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    new-array v8, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v6, v8, v0

    .line 42
    .line 43
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    add-int/lit8 v7, v7, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x3

    .line 58
    :goto_1
    if-ltz v2, :cond_1

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    mul-int/lit8 v6, v2, 0x8

    .line 69
    .line 70
    shr-long v6, v4, v6

    .line 71
    .line 72
    and-long/2addr v6, v8

    .line 73
    long-to-int v6, v6

    .line 74
    int-to-byte v6, v6

    .line 75
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-array v7, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v6, v7, v0

    .line 82
    .line 83
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/tencent/liteav/txcplayer/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v1, 0x9d6f

    const/16 v2, 0x3f3

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->g()V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v1, "str_fileid"

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/c;->a()Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$d;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    if-eq v0, v1, :cond_0

    .line 8
    iget v0, v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$d;->value:I

    .line 9
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 10
    const-string v1, "player_license_error"

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "u64_err_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v1, "str_err_info"

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->Q:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->sendReport()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[reportStart], report evt 40303: token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,str_fileid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,str_stream_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u64_err_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,str_err_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 3

    .line 40
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:F

    .line 41
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, 0x610

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[changeSpeed], mSpeed = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \uff0cerrorInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    const/4 v1, -0x1

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 45
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    if-nez p2, :cond_0

    move-object p2, v2

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    goto :goto_0

    .line 48
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_errorInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object p2, v2

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 50
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->c()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[putCustomData]: <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->P:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    iput-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:J

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    const-wide/16 v2, 0x0

    .line 31
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 32
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    .line 33
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    .line 34
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 35
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 36
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    if-eqz p1, :cond_0

    .line 37
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    goto :goto_0

    .line 38
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 39
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[start] ,mBeginPlayTS = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPaused = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPreLoading = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    const-string v0, "calculateSegmentPlayTime mBeginPlayTS == 0"

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calculateSegmentPlayTime mCurIndexPlayTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBeginPlayTS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:I

    .line 7
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/16 v1, 0x611

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:I

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " mIsMirror= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[stop] mCurIndexPlayTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsPaused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsPlaying = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsPreLoading ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()V

    .line 6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[stop] mPlayTime = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 9
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->i()V

    .line 10
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Z

    .line 12
    :cond_1
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 15
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 16
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    .line 17
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 18
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->P:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final c(Z)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 21
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    .line 22
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:I

    .line 23
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, 0x612

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setBitrateIndexCnt= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const-string v0, "setBitrateRenderStart"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    .line 8
    .line 9
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->R:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    const/16 v3, 0x60f

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "mSeekCnt= "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
