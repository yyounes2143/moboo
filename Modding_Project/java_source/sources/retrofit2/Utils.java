package retrofit2;

import j$.util.Objects;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.ResponseBody;
import okio.Buffer;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class Utils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type[] f14348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Type[0];

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14349Wwwwwwwwwwwwwwwwwwwwwwwww;

        public GenericArrayTypeImpl(Type type) {
            this.f14349Wwwwwwwwwwwwwwwwwwwwwwwww = type;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof GenericArrayType) && Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, (GenericArrayType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f14349Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public int hashCode() {
            return this.f14349Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        public String toString() {
            return Utils.Wwwwwwwwwwwwwww(this.f14349Wwwwwwwwwwwwwwwwwwwwwwwww) + "[]";
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type[] f14350Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14351Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14352Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ParameterizedTypeImpl(@Nullable Type type, Type type2, Type... typeArr) {
            boolean z;
            if (type2 instanceof Class) {
                if (type == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type3);
            }
            this.f14352Wwwwwwwwwwwwwwwwwwwwwwwww = type;
            this.f14351Wwwwwwwwwwwwwwwwwwwwwwww = type2;
            this.f14350Wwwwwwwwwwwwwwwwwwwwwww = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            if ((obj instanceof ParameterizedType) && Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, (ParameterizedType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f14350Wwwwwwwwwwwwwwwwwwwwwww.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        @Nullable
        public Type getOwnerType() {
            return this.f14352Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f14351Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public int hashCode() {
            int i;
            int hashCode = Arrays.hashCode(this.f14350Wwwwwwwwwwwwwwwwwwwwwww) ^ this.f14351Wwwwwwwwwwwwwwwwwwwwwwww.hashCode();
            Type type = this.f14352Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (type != null) {
                i = type.hashCode();
            } else {
                i = 0;
            }
            return hashCode ^ i;
        }

        public String toString() {
            Type[] typeArr = this.f14350Wwwwwwwwwwwwwwwwwwwwwww;
            if (typeArr.length == 0) {
                return Utils.Wwwwwwwwwwwwwww(this.f14351Wwwwwwwwwwwwwwwwwwwwwwww);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(Utils.Wwwwwwwwwwwwwww(this.f14351Wwwwwwwwwwwwwwwwwwwwwwww));
            sb.append("<");
            sb.append(Utils.Wwwwwwwwwwwwwww(this.f14350Wwwwwwwwwwwwwwwwwwwwwww[0]));
            for (int i = 1; i < this.f14350Wwwwwwwwwwwwwwwwwwwwwww.length; i++) {
                sb.append(", ");
                sb.append(Utils.Wwwwwwwwwwwwwww(this.f14350Wwwwwwwwwwwwwwwwwwwwwww[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class WildcardTypeImpl implements WildcardType {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14353Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Type f14354Wwwwwwwwwwwwwwwwwwwwwwwww;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length == 1) {
                    if (typeArr2.length == 1) {
                        typeArr2[0].getClass();
                        Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(typeArr2[0]);
                        if (typeArr[0] == Object.class) {
                            this.f14353Wwwwwwwwwwwwwwwwwwwwwwww = typeArr2[0];
                            this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww = Object.class;
                            return;
                        }
                        throw new IllegalArgumentException();
                    }
                    typeArr[0].getClass();
                    Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(typeArr[0]);
                    this.f14353Wwwwwwwwwwwwwwwwwwwwwwww = null;
                    this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww = typeArr[0];
                    return;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }

        public boolean equals(Object obj) {
            if ((obj instanceof WildcardType) && Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, (WildcardType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f14353Wwwwwwwwwwwwwwwwwwwwwwww;
            return type != null ? new Type[]{type} : Utils.f14348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww};
        }

        public int hashCode() {
            int i;
            Type type = this.f14353Wwwwwwwwwwwwwwwwwwwwwwww;
            if (type != null) {
                i = type.hashCode() + 31;
            } else {
                i = 1;
            }
            return i ^ (this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode() + 31);
        }

        public String toString() {
            if (this.f14353Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                return "? super " + Utils.Wwwwwwwwwwwwwww(this.f14353Wwwwwwwwwwwwwwwwwwwwwwww);
            } else if (this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww == Object.class) {
                return "?";
            } else {
                return "? extends " + Utils.Wwwwwwwwwwwwwww(this.f14354Wwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
    }

    public static String Wwwwwwwwwwwwwww(Type type) {
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }

    public static void Wwwwwwwwwwwwwwww(Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (!(th instanceof ThreadDeath)) {
                if (!(th instanceof LinkageError)) {
                    return;
                }
                throw ((LinkageError) th);
            }
            throw ((ThreadDeath) th);
        }
        throw ((VirtualMachineError) th);
    }

    public static Type Wwwwwwwwwwwwwwwww(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(typeVariable);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type, cls, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ParameterizedType) {
                return ((ParameterizedType) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).getActualTypeArguments()[Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getTypeParameters(), typeVariable)];
            }
        }
        return typeVariable;
    }

    public static Type Wwwwwwwwwwwwwwwwww(Type type, Class<?> cls, Type type2) {
        boolean z;
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type3;
            Type Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(type, cls, typeVariable);
            if (Wwwwwwwwwwwwwwwww2 == typeVariable) {
                return Wwwwwwwwwwwwwwwww2;
            }
            type3 = Wwwwwwwwwwwwwwwww2;
        }
        if (type3 instanceof Class) {
            Class cls2 = (Class) type3;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww(type, cls, componentType);
                if (componentType == Wwwwwwwwwwwwwwwwww2) {
                    return cls2;
                }
                return new GenericArrayTypeImpl(Wwwwwwwwwwwwwwwwww2);
            }
        }
        if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type Wwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwww(type, cls, genericComponentType);
            if (genericComponentType == Wwwwwwwwwwwwwwwwww3) {
                return genericArrayType;
            }
            return new GenericArrayTypeImpl(Wwwwwwwwwwwwwwwwww3);
        } else if (type3 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            Type ownerType = parameterizedType.getOwnerType();
            Type Wwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwww(type, cls, ownerType);
            if (Wwwwwwwwwwwwwwwwww4 != ownerType) {
                z = true;
            } else {
                z = false;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type Wwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwww(type, cls, actualTypeArguments[i]);
                if (Wwwwwwwwwwwwwwwwww5 != actualTypeArguments[i]) {
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = Wwwwwwwwwwwwwwwwww5;
                }
            }
            if (z) {
                return new ParameterizedTypeImpl(Wwwwwwwwwwwwwwwwww4, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType;
        } else {
            boolean z2 = type3 instanceof WildcardType;
            WildcardType wildcardType = type3;
            if (z2) {
                WildcardType wildcardType2 = (WildcardType) type3;
                Type[] lowerBounds = wildcardType2.getLowerBounds();
                Type[] upperBounds = wildcardType2.getUpperBounds();
                if (lowerBounds.length == 1) {
                    Type Wwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwww(type, cls, lowerBounds[0]);
                    wildcardType = wildcardType2;
                    if (Wwwwwwwwwwwwwwwwww6 != lowerBounds[0]) {
                        return new WildcardTypeImpl(new Type[]{Object.class}, new Type[]{Wwwwwwwwwwwwwwwwww6});
                    }
                } else {
                    wildcardType = wildcardType2;
                    if (upperBounds.length == 1) {
                        Type Wwwwwwwwwwwwwwwwww7 = Wwwwwwwwwwwwwwwwww(type, cls, upperBounds[0]);
                        wildcardType = wildcardType2;
                        if (Wwwwwwwwwwwwwwwwww7 != upperBounds[0]) {
                            return new WildcardTypeImpl(new Type[]{Wwwwwwwwwwwwwwwwww7}, f14348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                    }
                }
            }
            return wildcardType;
        }
    }

    public static RuntimeException Wwwwwwwwwwwwwwwwwww(Method method, Throwable th, int i, String str, Object... objArr) {
        return Wwwwwwwwwwwwwwwwwwwww(method, th, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    public static RuntimeException Wwwwwwwwwwwwwwwwwwww(Method method, int i, String str, Object... objArr) {
        return Wwwwwwwwwwwwwwwwwwwwww(method, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    public static RuntimeException Wwwwwwwwwwwwwwwwwwwww(Method method, @Nullable Throwable th, String str, Object... objArr) {
        String format = String.format(str, objArr);
        return new IllegalArgumentException(format + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th);
    }

    public static RuntimeException Wwwwwwwwwwwwwwwwwwwwww(Method method, String str, Object... objArr) {
        return Wwwwwwwwwwwwwwwwwwwww(method, null, str, objArr);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwww(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Type type) {
        String name;
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwww(type2)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return Wwwwwwwwwwwwwwwwwwwwwwwww(((GenericArrayType) type).getGenericComponentType());
        } else {
            if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            }
            if (type == null) {
                name = AbstractJsonLexerKt.NULL;
            } else {
                name = type.getClass().getName();
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return Wwwwwwwwwwwwwwwwww(type, cls, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    public static Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwww(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(Wwwwwwwwwwwwwwwwwwwwwwwwwww(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwww(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i >= 0 && i < actualTypeArguments.length) {
            Type type = actualTypeArguments[i];
            if (type instanceof WildcardType) {
                return ((WildcardType) type).getUpperBounds()[0];
            }
            return type;
        }
        throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[i];
        if (type instanceof WildcardType) {
            return ((WildcardType) type).getLowerBounds()[0];
        }
        return type;
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if ((ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                return true;
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                return true;
            }
            return false;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName())) {
                return true;
            }
            return false;
        }
    }

    @Nullable
    public static Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    public static ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.source().Wwww(buffer);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), buffer);
    }
}
