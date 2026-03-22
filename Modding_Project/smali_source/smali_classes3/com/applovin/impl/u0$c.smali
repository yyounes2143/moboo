.class Lcom/applovin/impl/u0$c;
.super Landroid/text/style/ClickableSpan;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/u0;->c(Lcom/applovin/impl/q0;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/u0;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/u0;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/u0$c;->c:Lcom/applovin/impl/u0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/u0$c;->a:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/impl/u0$c;->b:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u0$c;->a:Landroid/net/Uri;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/u0$c;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/u0$c;->c:Lcom/applovin/impl/u0;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/applovin/impl/u0;->d(Lcom/applovin/impl/u0;)Lcom/applovin/impl/sdk/k;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/z6;->a(Landroid/net/Uri;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
