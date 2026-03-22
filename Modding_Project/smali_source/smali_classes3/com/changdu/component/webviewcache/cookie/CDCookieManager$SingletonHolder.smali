.class Lcom/changdu/component/webviewcache/cookie/CDCookieManager$SingletonHolder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/webviewcache/cookie/CDCookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final a:Lcom/changdu/component/webviewcache/cookie/CDCookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/webviewcache/cookie/CDCookieManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/webviewcache/cookie/CDCookieManager$SingletonHolder;->a:Lcom/changdu/component/webviewcache/cookie/CDCookieManager;

    .line 7
    .line 8
    return-void
.end method
