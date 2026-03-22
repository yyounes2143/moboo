.class public abstract Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder$Accumulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ViewVisitor"


# instance fields
.field private final mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder$PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathfinder:Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder$PathElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPath:Ljava/util/List;

    .line 5
    .line 6
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPathfinder:Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public visit(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPathfinder:Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ViewVisitor;->mPath:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder;->findTargetsInRoot(Landroid/view/View;Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/util/Pathfinder$Accumulator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
