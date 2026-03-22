.class Lcom/mbridge/msdk/foundation/feedback/bean/a$d;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/feedback/bean/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/feedback/bean/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->d(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$d;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->d(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setCancelButtonClickable(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
