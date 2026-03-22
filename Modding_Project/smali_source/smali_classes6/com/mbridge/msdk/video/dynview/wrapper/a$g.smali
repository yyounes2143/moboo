.class Lcom/mbridge/msdk/video/dynview/wrapper/a$g;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->c(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/listener/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->c:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    iget-object p4, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->c:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    .line 2
    .line 3
    iget-object p5, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$g;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p4, p5, v0, p3}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;Ljava/util/List;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
