# AsmOS

![AsmOS Logo](https://via.placeholder.com/400x150.png?text=AsmOS)

AsmOS é um sistema operacional minimalista escrito em Assembly, projetado para ser leve, rápido e seguro. Criado com foco em aprendizado, desempenho e customização, é uma excelente base para quem deseja explorar sistemas operacionais de baixo nível.

## 🚀 Recursos
- **Bootloader personalizado**
- **Kernel em Assembly puro**
- **Gerenciamento básico de interrupções**
- **Sistema de arquivos simples**
- **Drivers essenciais**
- **Execução de programas em modo real**
- **Foco em segurança e anonimato**

## 📜 Requisitos
- **Compilador NASM** (para montar os arquivos Assembly)
- **QEMU ou VirtualBox** (para testes)
- **Make** (para compilar e gerar a imagem do SO)

## 🛠️ Como Compilar e Rodar

### 1️⃣ Clonar o repositório
```bash
git clone https://github.com/SEU_USUARIO/AsmOS.git
cd AsmOS
```

### 2️⃣ Compilar o Bootloader e o Kernel
```bash
chmod +x Assembler.sh
./Assembler.sh
```

### 3️⃣ Criar a imagem do sistema operacional
```bash
dd if=bin/bootloader.bin of=asmos.img bs=512 count=1 conv=notrunc
dd if=bin/kernel.bin of=asmos.img bs=512 seek=1 conv=notrunc
```

### 4️⃣ Rodar no QEMU
```bash
qemu-system-x86_64 -drive format=raw,file=asmos.img
```

### 5️⃣ Rodar no VirtualBox
Adicione `asmos.img` como um disco de boot no VirtualBox e inicie a VM.

## 📁 Estrutura do Projeto
```
AsmOS/
├── Assembler.sh   # Script de build
├── bin/           # Arquivos binários gerados
├── boot/          # Código do bootloader
│   ├── loader/
│   │   ├── bootloader.asm
├── sys/           # Kernel e componentes
│   ├── kernel/
│   │   ├── kernel.asm
│   ├── drivers/
│   ├── fs/
│   ├── interrupt/
├── etc/           # Configurações
│   ├── config.asm
│   ├── kernel_config.asm
│   ├── services.asm
├── docs/          # Documentação
│   ├── architecture.txt
│   ├── usage.txt
└── user/          # Programas de usuário
    ├── calculator.asm
    ├── editor.asm
    ├── hello.asm
```

## 📜 Licença
AsmOS é licenciado sob a **MIT License**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

## 🤝 Contribuição
Contribuições são bem-vindas! Para contribuir:
1. Faça um **fork** do repositório.
2. Crie uma **branch** (`git checkout -b minha-feature`).
3. Faça commit das suas alterações (`git commit -m "feat: minha nova feature"`).
4. Envie para o repositório (`git push origin minha-feature`).
5. Abra um **Pull Request**.

## 📞 Contato
- Email: seuemail@example.com
- Twitter: [@seuuser](https://twitter.com/seuuser)
- Discord: SeuServidor#1234

---
**AsmOS - Criando um SO do zero, um byte de cada vez!**

