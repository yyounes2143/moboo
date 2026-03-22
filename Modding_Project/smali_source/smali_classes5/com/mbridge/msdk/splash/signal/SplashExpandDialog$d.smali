.class Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->c(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/splash/middle/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->c(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/splash/middle/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/splash/middle/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->c(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/splash/middle/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/mbridge/msdk/splash/middle/a;->close()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const-string v2, ""

    .line 36
    .line 37
    const-string v3, "text/html"

    .line 38
    .line 39
    const-string v4, "utf-8"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->e(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Landroid/widget/FrameLayout;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->d(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->a(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog$d;->a:Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;->a(Lcom/mbridge/msdk/splash/signal/SplashExpandDialog;Lcom/mbridge/msdk/splash/middle/a;)Lcom/mbridge/msdk/splash/middle/a;

    .line 81
    .line 82
    .line 83
    return-void
.end method
