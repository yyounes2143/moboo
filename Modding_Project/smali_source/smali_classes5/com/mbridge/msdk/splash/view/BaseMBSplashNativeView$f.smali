.class Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->H:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->M:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/mbridge/msdk/splash/middle/a;->close()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$f;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
