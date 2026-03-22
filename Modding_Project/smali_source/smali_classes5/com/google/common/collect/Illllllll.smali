.class public final synthetic Lcom/google/common/collect/Illllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Comparator;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/common/collect/Illllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/Illllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/Illllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Illllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/collect/Comparators;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
