.class public Lcom/miui/aod/resource/DrawableGravityData;
.super Lcom/miui/aod/components/DrawableData;
.source "DrawableGravityData.java"


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    iput p2, p0, Lcom/miui/aod/resource/DrawableGravityData;->gravity:I

    return-void
.end method
