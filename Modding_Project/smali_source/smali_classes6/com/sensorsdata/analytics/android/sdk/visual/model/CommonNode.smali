.class public Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5164b91d2764dd3bL


# instance fields
.field private $element_content:Ljava/lang/String;

.field private $element_path:Ljava/lang/String;

.field private $element_position:Ljava/lang/String;

.field private enable_click:Z

.field private height:F

.field private id:Ljava/lang/String;

.field private isRootView:Z

.field private is_list_view:Z

.field private left:F

.field private level:I

.field private lib_version:Ljava/lang/String;

.field private originLeft:F

.field private originTop:F

.field private scale:F

.field private scrollX:F

.field private scrollY:F

.field private subelements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private top:F

.field private visibility:Z

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public get$element_content()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get$element_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get$element_position()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->height:F

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->left:F

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLib_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->lib_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->originLeft:F

    .line 2
    .line 3
    return v0
.end method

.method public getOriginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->originTop:F

    .line 2
    .line 3
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scale:F

    .line 2
    .line 3
    return v0
.end method

.method public getScrollX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scrollX:F

    .line 2
    .line 3
    return v0
.end method

.method public getScrollY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scrollY:F

    .line 2
    .line 3
    return v0
.end method

.method public getSubelements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->subelements:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->top:F

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->width:F

    .line 2
    .line 3
    return v0
.end method

.method public isEnable_click()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->enable_click:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIs_list_view()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->is_list_view:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRootView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->isRootView:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVisibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->visibility:Z

    .line 2
    .line 3
    return v0
.end method

.method public set$element_content(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set$element_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set$element_position(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->$element_position:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEnable_click(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->enable_click:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->height:F

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_list_view(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->is_list_view:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->left:F

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setLib_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->lib_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->originLeft:F

    .line 2
    .line 3
    return-void
.end method

.method public setOriginTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->originTop:F

    .line 2
    .line 3
    return-void
.end method

.method public setRootView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->isRootView:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scale:F

    .line 2
    .line 3
    return-void
.end method

.method public setScrollX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scrollX:F

    .line 2
    .line 3
    return-void
.end method

.method public setScrollY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->scrollY:F

    .line 2
    .line 3
    return-void
.end method

.method public setSubelements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->subelements:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->top:F

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->visibility:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->width:F

    .line 2
    .line 3
    return-void
.end method
