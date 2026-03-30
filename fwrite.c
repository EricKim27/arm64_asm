#include <unistd.h>
#include <fcntl.h>

int main() {
	int fd = open("myfile.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
	if (fd == -1) {
		return 1;
	}
	const char *txt = "example text\n";
	write(fd, txt, 13);
	close(fd);
	return 0;
}
