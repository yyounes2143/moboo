.class public final Lcom/changdu/component/core/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/changdu/component/core/CDComponentConfigs;


# direct methods
.method public constructor <init>(Lcom/changdu/component/core/CDComponentConfigs;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/core/a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/changdu/component/core/a;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "cdComponent"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const-string v5, "gaid"

    .line 19
    .line 20
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v3, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 27
    .line 28
    iget-wide v6, v3, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 29
    .line 30
    const-wide/16 v8, -0x1

    .line 31
    .line 32
    cmp-long v4, v6, v8

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    iget-object v3, v3, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    sub-long/2addr v6, v0

    .line 51
    iput-wide v6, v3, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 52
    .line 53
    :cond_0
    iget-object v3, p0, Lcom/changdu/component/core/a;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/changdu/component/core/googleadid/GoogleAdId;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 60
    .line 61
    iget-wide v6, v4, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 62
    .line 63
    cmp-long v6, v6, v8

    .line 64
    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    sub-long/2addr v6, v0

    .line 72
    iput-wide v6, v4, Lcom/changdu/component/core/CDComponentConfigs;->z:J

    .line 73
    .line 74
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 81
    .line 82
    iput-object v3, v0, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/changdu/component/core/a;->b:Lcom/changdu/component/core/CDComponentConfigs;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/changdu/component/core/CDComponentConfigs;->y:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method
