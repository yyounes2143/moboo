.class public final Lcom/changdu/component/webviewcache/internal/i;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/changdu/component/webviewcache/config/CacheConfig;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lcom/changdu/component/webviewcache/internal/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/changdu/component/webviewcache/config/CacheConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/i;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/changdu/component/webviewcache/internal/i;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 11
    .line 12
    new-instance p1, Lcom/changdu/component/webviewcache/internal/m;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/changdu/component/webviewcache/internal/m;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/i;->f:Lcom/changdu/component/webviewcache/internal/m;

    .line 18
    .line 19
    return-void
.end method
