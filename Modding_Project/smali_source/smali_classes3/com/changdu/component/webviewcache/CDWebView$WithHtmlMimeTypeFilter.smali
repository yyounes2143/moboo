.class public final Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;
.super Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/webviewcache/CDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WithHtmlMimeTypeFilter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;",
        "Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;",
        "(Lcom/changdu/component/webviewcache/CDWebView;)V",
        "webview-cache_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "text/html"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
