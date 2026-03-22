.class final Lcom/tencent/liteav/sdkcommon/g$c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdkcommon/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/sdkcommon/g;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g$c;->a:Lcom/tencent/liteav/sdkcommon/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/liteav/sdkcommon/g;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/sdkcommon/g$c;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    move-object p4, p2

    .line 8
    check-cast p4, Landroid/widget/TextView;

    .line 9
    .line 10
    const/high16 p5, -0x10000

    .line 11
    .line 12
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object p4, p0, Lcom/tencent/liteav/sdkcommon/g$c;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 16
    .line 17
    iget-object p5, p4, Lcom/tencent/liteav/sdkcommon/g;->e:Landroid/widget/ArrayAdapter;

    .line 18
    .line 19
    invoke-virtual {p5, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    check-cast p5, Ljava/lang/String;

    .line 24
    .line 25
    iput-object p5, p4, Lcom/tencent/liteav/sdkcommon/g;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p4, p0, Lcom/tencent/liteav/sdkcommon/g$c;->a:Lcom/tencent/liteav/sdkcommon/g;

    .line 28
    .line 29
    iget-object p4, p4, Lcom/tencent/liteav/sdkcommon/g;->o:Lcom/tencent/liteav/sdkcommon/g$a;

    .line 30
    .line 31
    invoke-interface {p4, p3}, Lcom/tencent/liteav/sdkcommon/g$a;->a(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method
