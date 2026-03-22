.class public final synthetic Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/DeserializationStrategy;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/internal/TaggedDecoder;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/internal/TaggedDecoder;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/DeserializationStrategy;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/internal/TaggedDecoder;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/DeserializationStrategy;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/serialization/internal/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/internal/TaggedDecoder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
