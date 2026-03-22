.class public final synthetic Lkotlinx/serialization/json/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/json/Json;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/json/Json;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/serialization/json/Json;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
